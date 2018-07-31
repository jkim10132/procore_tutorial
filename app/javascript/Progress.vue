<template>
  <div align="center">
    <md-progress-bar class="md-accent" md-mode="determinate" :md-value="amount"></md-progress-bar>
  </div>
</template>

<script>
  export default {
    name: 'ProgressBarDeterminate',
    data: () => ({
      amount: 50,
    })
  }
</script>

<style lang="scss" scoped>
  .md-progress-bar {
    margin: 24px;
    color:#f47e42;
  }
</style>
