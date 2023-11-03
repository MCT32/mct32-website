<script>
    export let src;
</script>

<div class="parallax" style="background-image: url({src});">
    <slot />
</div>

<style>
    .parallax {
        background-attachment: fixed;
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
    }
</style>