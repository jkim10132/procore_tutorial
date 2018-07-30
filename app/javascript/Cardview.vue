<template>
  <div>
   <md-card md-with-hover>
      <md-ripple>
        <md-card-header>
          <div class="md-title">
            <h1>{{title}}</h1>
          </div>
          <div class="md-subhead">It also have a lol</div>
        </md-card-header>

        <md-card-content>
          Lorem ipsum dolor sit amet, consectetur adipisicing elit. Optio itaque ea, nostrum odio. Dolores, sed accusantium quasi non.
        </md-card-content>

        <md-card-actions>
          <md-button>Action</md-button>
          <md-button>Action</md-button>
        </md-card-actions>
      </md-ripple>
    </md-card>
  </div>
</template>

<style lang="scss" scoped>
  .md-card {
    width: 200px;
    margin: 4px;
    display: inline-block;
    vertical-align: top;
  }
</style>

<script>
export default {
  props: ['title']
}
</script>
