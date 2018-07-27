<template>
  <div>
    <md-menu md-direction="bottom-start">
      <md-button md-menu-trigger>Courses & Tutorials</md-button>

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
      <md-button md-menu-trigger>Lectures Available</md-button>

      <md-menu-content>
        <md-menu-item>My Lecture 1</md-menu-item>
        <md-menu-item>My Lecture 2</md-menu-item>
        <md-menu-item>My Lecture 3</md-menu-item>
      </md-menu-content>
    </md-menu>

    <md-menu md-direction="top-end">
      <md-button md-menu-trigger>Please Help</md-button>
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
