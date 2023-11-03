<script>
    export let title;
</script>

<div class="bg-sky-400 p-4 text-white">
    <h1 class="inline pr-14">{title}</h1>

    <ul class="inline">
        <slot />
    </ul>
</div>