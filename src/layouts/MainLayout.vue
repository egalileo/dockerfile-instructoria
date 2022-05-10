<template>
  <div class="q-pa-md">
    <q-layout view="lHh Lpr lFf">
      <q-header elevated class="bg-primary">
        <!--bg-cyan-10-->
        <q-toolbar>
          <q-btn flat @click="drawer = !drawer" round dense icon="menu" />
          <q-toolbar-title>Diseño de Sistemas </q-toolbar-title>
        </q-toolbar>
      </q-header>

      <q-drawer
        v-model="drawer"
        show-if-above
        :width="300"
        :breakpoint="400"
        elevated
      >
        <q-scroll-area
          style="
            height: calc(100% - 150px);
            margin-top: 150px;
            border-right: 1px solid #ddd;
          "
        >
          <q-list padding>
            <q-item clickable v-ripple to="">
              <q-item-section avatar>
                <q-icon name="home" />
              </q-item-section>

              <q-item-section>Home</q-item-section>
            </q-item>
            <q-separator />

            <q-item clickable v-ripple to="proyecto">
              <q-item-section avatar>
                <q-icon name="directions_bus" />
              </q-item-section>

              <q-item-section>Mi Proyecto</q-item-section>
            </q-item>
            <q-separator />

            <q-item clickable v-ripple to="conocimiento">
              <q-item-section avatar>
                <q-icon name="import_contacts" />
              </q-item-section>

              <q-item-section>Mis Conocimientos</q-item-section>
            </q-item>
            <q-separator />
          </q-list>
        </q-scroll-area>

        <q-card flat class="absolute-top">
          <q-img
            src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFepI5264t3kZ4vdIKGe17pwOVQ65UW0EDIw&usqp=CAU"
            style="width: 300px; height: 150px"
          >
            <div class="absolute-bottom bg-transparent">
              <q-avatar size="56px" class="q-mb-sm">
                <img
                  src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSheYo_o7D4VvImtBM3K73roWBkWIhF3EDIzg-g7jglG-1Cf59c8lXcY060Nnrn715Uv7U&usqp=CAU"
                />
              </q-avatar>
              <div class="text-weight-bold">Henry Rolando Cardona Valle</div>
            </div>
          </q-img>
        </q-card>
      </q-drawer>

      <q-page-container>
        <router-view></router-view>
      </q-page-container>

      <q-footer class="bg-primary text-white">
        <q-toolbar>
          <q-toolbar-title> G2 </q-toolbar-title>
        </q-toolbar>
      </q-footer>
    </q-layout>
  </div>
</template>

<script>
export default {
  data: () => ({
    drawer: false,
    text: "",
  }),
};
</script>
