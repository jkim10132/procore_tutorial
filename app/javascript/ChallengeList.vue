<!-- <div v-if="showClassmates==0"> -->

<template>
  <div class="page-container md-layout-row">
    <md-app id="challenge-layout">
      <md-app-toolbar class="md-primary">
        <span class="md-title">{{current_challenge}} </span>
      </md-app-toolbar>

      <md-app-drawer md-permanent="full">
        <md-toolbar class="md-transparent" md-elevation="0" id="course-name">
          <h2> {{course_name}} Challenges</h2> 
          <br> <br>
        </md-toolbar>
          <md-list v-for="challenge in challenges">
          <md-list-item id ="challenge-listing">
            <md-icon>assignment</md-icon>
            <md-button id= "challenge-progress" class="md-primary md-list-item-text" v-on:click="current_chalenge=challenge.name">
              {{challenge.name}} {{challenge.number_of_completed}} / {{challenge.number_of_tasks}}
              <lol v-bind:amount = "percentage(challenge.number_of_completed, challenge.number_of_tasks)"> </lol></md-button>
          </md-list-item>
        </md-list>
      </md-app-drawer>

      <md-app-content>
        <h1 v-for="challenge in challenges">{{challenge.name}} hi</h1>
      </md-app-content>
    </md-app>
  </div>
</template>

<script>
  export default {
    name: 'PermanentFull',
    props: {
      course_name: String,
      challenges: Array
    },
    data:() => ({
      current_challenge: "hi",
      showClassmates: 0,
    }),
    methods:{
      percentage: function(number_of_completed, number_of_tasks){
          return Math.round((number_of_completed / number_of_tasks) * 100)
      },
      isComplete: function(number_of_completed, number_of_tasks){

      }
    }
  }
</script>

<style lang="scss">
  .md-app {
    min-height: 350px;
    border: 1px solid rgba(#000, .12);
  }

  .md-drawer {
    width: 1px;
    max-width: calc(100vw - 125px);
  }
</style>

<!-- </div> -->


