<script>
    import { createEventDispatcher } from "svelte";

    const dispatch = createEventDispatcher();

    /** @type {string} */
    export let tag;

    let isPressed = false;

    const toggleIsPressed = () => {
        isPressed = !isPressed;

        dispatch('tagEvent', { tag: tag, toggle: isPressed })
    };
</script>

<button aria-pressed={isPressed} on:click={toggleIsPressed} class="rounded-lg border border-gray-500 p-2 mr-1 mb-2 {isPressed ? "bg-blue-500 text-white" : "text-black"}">
    {tag}
</button>