<template>
  <div>
    <md-progress-bar md-mode="determinate" :md-value="amount"></md-progress-bar>
  </div>
</template>

<script>
  export default {
    name: 'ProgressBarDeterminate',
    data: () => ({
      amount: 50
    })
  }
</script>

<style lang="scss" scoped>
  .md-progress-bar {
    margin: 24px;
  }
</style>
