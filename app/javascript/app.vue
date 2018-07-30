<template>
  <div>
    <md-menu md-direction="bottom-start">
      <md-button md-menu-trigger>Courses</md-button>

      <md-menu-content>
        <md-menu-item>Github</md-menu-item>
        <md-menu-item>Ruby Tutorial</md-menu-item>
        <md-menu-item>Rails Tutorial</md-menu-item>
        <md-menu-item>ReactJS Tutorial</md-menu-item>
      </md-menu-content>
    </md-menu>

    <md-menu md-direction="bottom-end">
      <md-button md-menu-trigger>Classmates</md-button>
    </md-menu>

    <md-menu md-direction="top-start">
      <md-button md-menu-trigger>Resources</md-button>

      <md-menu-content>
        <md-menu-item href="https://reactjs.org/tutorial/tutorial.html">React Tutorial</md-menu-item>
        <md-menu-item>My Lecture 2</md-menu-item>
        <md-menu-item>My Lecture 3</md-menu-item>
      </md-menu-content>
    </md-menu>

    <md-menu md-direction="top-end">
      <md-button md-menu-trigger href="https://www.youtube.com/watch?v=ee925OTFBCA">For the love of God please someone help everything is on fire</md-button>
    </md-menu>
  </div>
</template>

<script>
  export default {
    name: 'Directions'
  }
</script>

<style lang="scss" scoped>
  .md-menu {
    margin: 24px;
  }
</style>
