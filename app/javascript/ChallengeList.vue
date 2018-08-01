x
<template>
  <div class="page-container md-layout-row">
    <md-app>
      <md-app-toolbar class="md-primary">
        <span class="md-title">~ Challenge Descriptions ~</span>
        <md-button class="md-raised md-accent" v-on:click="showClassmates=1 ">Show Classmates</md-button>
        <md-button class="md-raised md-accent" v-on:click="showClassmates=0 ">Hide Classmates</md-button>
      </md-app-toolbar>

      <md-app-drawer md-permanent="full">
        <md-toolbar class="md-transparent" md-elevation="0">
          <h2> Select Your Challenge </h2> 
          <br> <br>
        </md-toolbar>

        <md-list>
          <md-list-item>
            <md-icon>assignment</md-icon>
            <md-button class="md-primary md-list-item-text" v-on:click="count=1">Challenge 1 <lol> </lol></md-button>
          </md-list-item>
          <br> <br> <br>
          <md-list-item>
            <md-icon>assignment</md-icon>
            <md-button class="md-primary md-list-item-text" v-on:click="count=2" >Challenge 2 <lol> </lol></md-button>
          </md-list-item>
          <br> <br> <br>
          <md-list-item>
            <md-icon>assignment</md-icon>
            <md-button class="md-primary md-list-item-text" v-on:click="count=3">Challenge 3 <lol> </lol></md-button>
          </md-list-item>
          <br> <br> <br>
          <md-list-item>
            <md-icon>assignment</md-icon>
            <md-button class="md-primary md-list-item-text" v-on:click="count=4">Challenge 4 <lol> </lol></md-button>
          </md-list-item>
          <br> <br> <br> <br> <br> <br> <br> <br>
        </md-list>
      </md-app-drawer>

      <md-app-content>

        <div v-if="showClassmates==0">

        <div v-if="count == 1">This is count: {{count}}</div>

        <div v-else-if="count == 2">This is count: {{count}} lol {{showClassmates}} lol</div>

        <div v-else-if="count == 3">This is count: {{count}} </div>

        <div v-else-if="count == 4">This is count: {{count}}</div>

        <div v-else>This is count: {{count}}</div>

        </div>

        <div v-else>

          <bryan> </bryan>
        </div>

      </md-app-content>
    </md-app>
  </div>
</template>

<script>
  export default {
    name: 'PermanentFull',
    data:() => ({
      count: 0,
      showClassmates: 0,
    })
  }
</script>

<style lang="scss" scoped>
  .md-app {
    min-height: 350px;
    border: 1px solid rgba(#000, .12);
  }

  .md-drawer {
    width: 230px;
    max-width: calc(100vw - 125px);
  }
</style>

</div>

<div v-else-if="showClassmates==0">
</div>



