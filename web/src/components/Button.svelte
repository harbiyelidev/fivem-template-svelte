<script lang="ts">
  export let onClick: () => void;
</script>

<button on:click={onClick}>
  <slot />
</button>

<style>
  button {
    padding: 10px 20px;
    background: #444;
    color: white;
    border: none;
    cursor: pointer;
  }
</style>
