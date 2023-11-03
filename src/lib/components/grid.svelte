<script>
    import TagButton from "$lib/components/tagButton.svelte";
    import GridItem from "$lib/components/gridItem.svelte";

    const projects = [
        {
            title: "VelocityEngine",
            description: "Shitty, unfinished Wolfenstein clone",
            href: "https://github.com/MCT32/VelocityEngine",
            tags: [
                "Rust",
            ],
        },
        {
            title: "DOOM Melting Transition",
            description: "Recreationn of the DOOM level transition in Python. Exports to GIF.",
            href: "https://github.com/MCT32/Doom-Melting-Transition",
            tags: [
                "Python",
            ],
        },
        {
            title: "Discord Soundboard",
            description: "VC soundboard bot that can be controlled from outside the VC. Made before soundboards were officially added to Discord.",
            href: "https://github.com/MCT32/discord-soundboard",
            tags: [
                "Javascript",
                "Node",
            ],
        },
        {
            title: "Zombie Shooter",
            description: "2D zombie shooter survival game.",
            href: "https://github.com/MCT32/ZombieShooter",
            tags: [
                "Python",
                "Godot",
            ],
        },
    ]

    /** @type {string[]} */
    let tagList = [];

    for (let project of projects) {
        for (let tag of project.tags) {
            if (tagList.indexOf(tag) === -1) {
                tagList.push(tag)
            }
        }
    }

    tagList.sort()

    /**
     * @type {string[]}
     */
    let enabledTags = [];

    /**
     * @param {{ detail: { toggle: boolean; tag: string; }; }} event
     */
    function handleTagEvent(event) {
        if (event.detail.toggle) {
            enabledTags.push(event.detail.tag)
            enabledTags = enabledTags;
        } else {
            enabledTags.splice(enabledTags.indexOf(event.detail.tag), 1);
            enabledTags = enabledTags;
        }
    }
</script>
<div class="border border-gray-500 rounded-lg p-5 m-5">
    <div>
        {#each tagList as tag}
            <TagButton {tag} on:tagEvent={handleTagEvent} />
        {/each}
    </div>
    <div class="grid grid-cols-3 gap-4">
        {#each projects as {title, description, href, tags}}
            {#if enabledTags.length > 0}
                {#if tags.filter(element => enabledTags.includes(element)).length > 0}
                    <GridItem {description} {title} {href} />
                {/if}
            {:else}
                <GridItem {description} {title} {href} />
            {/if}
        {/each}
    </div>
</div>