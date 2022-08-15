<template>
  <div class="components-page-header-demo-responsive" style="border: 1px solid rgb(235, 237, 240)">
    <a-layout class="layout">
      <div class="ant-page-header ant-page-header-ghost">
        <div class="ant-page-header-heading">
          <span class="ant-page-header-heading-title">
            <NuxtLink to="/">
              Nuxt Finance
            </NuxtLink>
          </span>
          <span class="ant-page-header-heading-sub-title">A Very Nice Site 😎</span>
        </div>
        <div>
          <a-button key="1"><NuxtLink to="/public">Public</NuxtLink></a-button>
          <a-button key="2"><NuxtLink to="/private">Private</NuxtLink></a-button>
          <a-button key="3"><NuxtLink to="/log-in">Log In</NuxtLink></a-button>
          <a-button key="4" type="primary"><NuxtLink to="/log-in">Sign Up</NuxtLink></a-button>
        </div>
      </div>
      <a-layout-content style="margin: 10px 0 0; padding: 0 50px">
        <div :style="{ background: '#fff', padding: '24px', minHeight: '280px' }">
          <Nuxt />        
        </div>
      </a-layout-content>
      <a-layout-footer style="text-align: center">
        Cool Site ©2022
      </a-layout-footer>
    </a-layout>
  </div>

</template>

<style>
.components-page-header-demo-responsive {
  padding-bottom: 5px;
}
.components-page-header-demo-responsive tr:last-child td {
  padding-bottom: 0;
}
.ant-page-header {
  display: flex;
  justify-content: space-between;
} 
.ant-page-header-heading {
  width: inherit;
}
.ant-page-header-heading-title a {
  color: rgba(0, 0, 0, 0.85);
}
#components-page-header-demo-responsive .ant-statistic-content {
  font-size: 20px;
  line-height: 28px;
}
@media (max-width: 576px) {
  #components-page-header-demo-responsive .content {
    display: block;
  }

  #components-page-header-demo-responsive .main {
    width: 100%;
    margin-bottom: 12px;
  }

  #components-page-header-demo-responsive .extra {
    width: 100%;
    margin-left: 0;
    text-align: left;
  }
}
</style>

<script>
export default {
  name: 'IndexPage'
}
</script>
