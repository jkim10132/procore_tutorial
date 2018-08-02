<template>
  <div>
    <md-table v-model="searched" md-sort="name" md-sort-order="asc" md-card md-fixed-header>
      <md-table-toolbar>
        <div class="md-toolbar-section-start">
          <h1 class="md-title">Users</h1>
        </div>

        <md-field md-clearable class="md-toolbar-section-end">
          <md-input placeholder="Search by name..." v-model="search" @input="searchOnTable" />
        </md-field>
      </md-table-toolbar>

      <md-table-empty-state
        md-label="No users found"
        :md-description="`No user found for this '${search}' query. Try a different search term`">
      </md-table-empty-state>

      <md-table-row slot="md-table-row" slot-scope="{ item }">
        <md-table-cell md-label="Number Of Completed" md-sort-by="id" md-numeric>{{ item.number_of_completed }}</md-table-cell>
        <md-table-cell md-label="Email" md-sort-by="name">{{ item.name }}</md-table-cell>
      </md-table-row>
    </md-table>
  </div>
</template>

<script>
  const toLower = text => {
    return text.toString().toLowerCase()
  }

  const searchByName = (items, term) => {
    if (term) {
      return items.filter(item => toLower(item.name).includes(toLower(term)))
    }

    return items
  }

  export default {
    name: 'TableSearch',
    props:{
      challenges: Object,
      total: Number
    },
    data: () => ({
      search: null,
      searched: [],
      users: [ 
      ]
    }),
    methods: {
      newUser () {
        window.alert('Noop')
      },
      searchOnTable () {
        this.searched = searchByName(this.users, this.search)
      },
      updateProps: function(new_data){
          this.challenges = new_data;
      }
    },
    created () {
      var student_data = this._props.challenges
      Array.prototype.sum = function (prop) {
          var total = 0
          for ( var i = 0, _len = this.length; i < _len; i++ ) {
              total += this[i][prop]
          }
          return total
      }
      for (var key in student_data){
        this.users.push({
          name: key,
          number_of_completed: student_data[key].sum("number_of_completed")
        })
      }
      App.challenge = App.cable.subscriptions.create({channel: "ChallengeChannel"}, { received: function(data) {
          this.updateProps(data.content)
        }.bind(this)})
      this.searched = this.users
    }
  }
</script>

<style lang="scss" scoped>
  .md-field {
    max-width: 300px;
  }
</style>
