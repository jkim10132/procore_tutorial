<template>
  <div>
   <md-card md-with-hover>
      <md-ripple>
        <md-card-header>
          <div class="md-title">
            <h2>{{title}}</h2>
          </div>
          <div class="md-subhead">Click to experience Ruby</div>
        </md-card-header>

        <md-card-content>
          Click here for a free subscription to a comprehensive learning experience!
        </md-card-content>

        <md-card-actions>
          <md-button href="http://localhost:3000/students/1/courses/1/challenges">Select</md-button>
        </md-card-actions>
      </md-ripple>
    </md-card>
  </div>
</template>

<style lang="scss" scoped>
  .md-card {
    width: 200px;
    margin: 4px;
    display: inline-flex;
    justify-content: center;
    vertical-align: top;
  }

</style>

<script>
export default {
  props: ['title']
}
</script>
