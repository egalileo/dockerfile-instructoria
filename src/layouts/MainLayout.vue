<template>
  <div class="q-pa-md">
    <q-layout view="lHh LpR fFf">
      <q-header elevated class="bg-primary">
        <!--bg-cyan-10-->
        <q-toolbar>
          <q-btn flat @click="drawer = !drawer" round dense icon="menu" />
          <q-toolbar-title>Diseño de Sistemas I </q-toolbar-title>
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
            src="https://wallpapersfortech.com/elden-ring-wallpaper-4k/elden-ring-wallpaper"
            style="width: 300px; height: 150px"
          >
            <div class="absolute-bottom bg-transparent">
              <q-avatar size="56px" class="q-mb-sm">
                <img
                  src="https://avatars.akamai.steamstatic.com/9241fd4504e75a49aec4aa4114b1ff856ffa46a1_full.jpg"
                />
              </q-avatar>
              <div class="text-weight-bold">Erick Galileo Padilla</div>
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
