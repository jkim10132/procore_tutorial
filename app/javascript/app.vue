<template>
  <div class = "navbar-content">
    <md-avatar class="md-avatar-icon md-large">
        <img src="https://www.procore.com/images/logo/procore_logo_fc_k.png">
      </md-avatar>
    <md-menu md-direction="bottom-start">
      <md-button id="navbar-button"  md-menu-trigger href="/">Courses</md-button>
    </md-menu>

    <md-menu md-direction="bottom-end">
      <md-button id="navbar-button" md-menu-trigger>Classmates</md-button>
    </md-menu>

    <md-menu md-direction="top-start">
      <md-button id="navbar-button" md-menu-trigger>Resources</md-button>

      <md-menu-content>
        <md-menu-item href="https://reactjs.org/tutorial/tutorial.html">React Tutorial</md-menu-item>
        <md-menu-item>My Lecture 2</md-menu-item>
        <md-menu-item>My Lecture 3</md-menu-item>
      </md-menu-content>
    </md-menu>
  </div>
</template>

<script>
  export default {
    name: 'Directions'
  }
</script>
