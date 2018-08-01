<template>
  <div>
   <md-card md-with-hover class="course-card">
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
          <md-button :href="link">Select</md-button>
        </md-card-actions>
      </md-ripple>
    </md-card>
  </div>
</template>

<script>
export default {
  props: {
    title: String,
    link: String
  }
}
</script>
