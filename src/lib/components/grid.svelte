<script>
    import TagButton from "$lib/components/tagButton.svelte";
    import GridItem from "$lib/components/gridItem.svelte";

    const projects = [
        {
            title: "VelocityEngine",
            description: "Shitty, unfinished Wolfenstein clone",
            src: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.6mvzo-QSSaASiqJG2PnlGAHaEo%26pid%3DApi&f=1&ipt=a863ca19e68cff54bf67889dd01dd10815458fe118d14a70dcfdb7c3d9017323&ipo=images",
            alt: "Wolfenstein screenshot",
            href: "https://github.com/MCT32/VelocityEngine",
            tags: [
                "Rust",
            ],
        },
        {
            title: "DOOM Melting Transition",
            description: "Recreationn of the DOOM level transition in Python. Exports to GIF.",
            src: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.JhqeWkbt9YhsDCtk_tkiRQHaEo%26pid%3DApi&f=1&ipt=5df1fe31c995218e9d51c8a063986d03c97c6b71672a40f0f30d66592791aa8d&ipo=images",
            alt: "Doom art",
            href: "https://github.com/MCT32/Doom-Melting-Transition",
            tags: [
                "Python",
            ],
        },
        {
            title: "Discord Soundboard",
            description: "VC soundboard bot that can be controlled from outside the VC. Made before soundboards were officially added to Discord.",
            src: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Flogos-world.net%2Fwp-content%2Fuploads%2F2020%2F12%2FDiscord-Logo.png&f=1&nofb=1&ipt=d61746e744d6222360ed8ed7661396042ce6eefdaacc44140962d22d9dc3ca42&ipo=images",
            alt: "Discord screenshot",
            href: "https://github.com/MCT32/discord-soundboard",
            tags: [
                "Javascript",
                "Node",
            ],
        },
        {
            title: "Zombie Shooter",
            description: "2D zombie shooter survival game.",
            src: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.yHHLoIu8WGhvUVvgUwMYDwHaHa%26pid%3DApi&f=1&ipt=0ce2b0e46930b659078f7083e24cd2bacc29b35afa47ac859f389103ffe4cef2&ipo=images",
            alt: "Zombie head",
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
        {#each projects as {title, description, src, alt, href, tags}}
            {#if enabledTags.length > 0}
                {#if tags.filter(element => enabledTags.includes(element)).length > 0}
                    <GridItem {description} {title} {src} {alt} {href} />
                {/if}
            {:else}
                <GridItem {description} {title} {src} {alt} {href} />
            {/if}
        {/each}
    </div>
</div>