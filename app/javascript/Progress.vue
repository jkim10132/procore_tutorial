<template>
  <div>
    <md-progress-bar id = "challenge-progress-bar" md-mode="determinate" :md-value="amount"></md-progress-bar>
  </div>
</template>

<script>
  export default {
    name: 'ProgressBarDeterminate',
    props: {
      amount: Number
    }
  }
</script>
