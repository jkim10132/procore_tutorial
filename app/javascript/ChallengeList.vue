<template>
  <div class="page-container">
    <md-app>
      <md-app-toolbar class="md-primary">
        <span class="md-title">~ Challenge Descriptions ~</span>
      </md-app-toolbar>

      <md-app-drawer md-permanent="clipped">
        <md-list>
          <md-list-item>
            <md-icon>assignment</md-icon>
            <md-button :md-ripple="false" class=" md-list-item-text" v-on:click="count = 1">Challenge 1</md-button>
          </md-list-item>
          <br> <br>
          <md-list-item>
            <md-icon>assignment</md-icon>
            <md-button :md-ripple="false" class="md-list-item-text" v-on:click="count = 2">Challenge 2</md-button>
          </md-list-item>
          <br> <br>
          <md-list-item>
            <md-icon>assignment</md-icon>
            <md-button :md-ripple="false" class="md-list-item-text" v-on:click="count = 3">Challenge 3</md-button>
          </md-list-item>
          <br> <br>
          <md-list-item>
            <md-icon>assignment</md-icon>
            <md-button :md-ripple="false" class="md-list-item-text" v-on:click="count = 4">Challenge 4</md-button>
          </md-list-item>
        </md-list>
      </md-app-drawer>

      
      <md-app-content>
      <br> <br> <br> <br>
      <h3>

      <div v-if="count == 1">HahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahahaHahahahaahahaha</div>
      <div v-else-if="count == 2">lollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollol<br>ollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollol<br>ollolollollolollollolollollolollollolollollolollollolollollolollolollollolollollolollollolollollolollollolollol<br>ollolollollolollollolollolollollolollollolollollolollollolollollolollollolollol<br>ollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollol<br>ollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollol<br>ollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollol<br>ollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollol<br>ollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollol<br>ollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollol<br>ollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollol<br>ollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollol<br>ollolollollolollollolollollolol<br>ollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollol<br>ollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollol<br>ollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollol<br>ollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollol<br>ollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollol<br>ollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollolloollollolollollolollollolollollolollollolollol<br>ollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollol<br>ollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollol<br>ollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollol<br>ollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollol<br>ollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollollolollol<br></div>
      <div v-else-if="count == 3">lmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmaolmao</div>
      <div v-else-if="count == 4"> yoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoy<br>oyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyoyoyoyyo</div>
      <div v-else>Render the first component again!!!` Render the first component again!!!`Render the first component again!!!`Render the first component again!!!` Render the first component again!!!`Render the first component again!!!`Render the first component again!!!` Render the first component 
      </div>
    </h3>
      </md-app-content>
    </md-app>
  </div>
</template>

<style lang="scss" scoped>
  .md-app {
    max-height: 1000px;
    border: 1px solid rgba(#000, .12);
  }

   // Demo purposes only
  .md-drawer {
    width: 230px;
    max-width: calc(100vw - 125px);
  }
  .page-container {
    height: 700px;
  }
</style>

<script>
export default {
  name: 'LastRowFixed',
  data: () => ({
    menuVisible: false
  })
}
</script>