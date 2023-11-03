<script>
// @ts-nocheck

    import TagButton from "$lib/components/tagButton.svelte";
    import GridItem from "$lib/components/gridItem.svelte";
    import TagGroup from "$lib/components/tagGroup.svelte"

    /** @type {any} */
    const projects = [
        {
            title: "MCT32's Website",
            description: "The website you are browsing right now!",
            href: "https://github.com/MCT32/mct32-website",
            tags: {
                state: ["WIP"],
                languages: [
                    "Svelte",
                    "HTML",
                    "Javascript",
                ],
            },
        },
        {
            title: "VelocityEngine",
            description: "Shitty, unfinished Wolfenstein clone",
            href: "https://github.com/MCT32/VelocityEngine",
            tags: {
                state: ["Unfinished"],
                languages: [
                    "Rust",
                ],
            },
        },
        {
            title: "DOOM Melting Transition",
            description: "Recreationn of the DOOM level transition in Python. Exports to GIF.",
            href: "https://github.com/MCT32/Doom-Melting-Transition",
            tags: {
                state: ["Completed"],
                languages: [
                    "Python",
                ],
            },
        },
        {
            title: "Discord Soundboard",
            description: "VC soundboard bot that can be controlled from outside the VC. Made before soundboards were officially added to Discord.",
            href: "https://github.com/MCT32/discord-soundboard",
            tags: {
                state: ["Completed"],
                languages: [
                    "Javascript",
                    "Node",
                ],
            },
        },
        {
            title: "Zombie Shooter",
            description: "2D zombie shooter survival game.",
            href: "https://github.com/MCT32/ZombieShooter",
            tags: {
                state: ["Abandoned"],
                languages: [
                    "Python",
                    "Godot",
                ],
            },
        },
    ]

    /** @type {any} */
    let tagList = {};

    /**
     * @type {any}
     */
    let enabledTags = {};

    for (let project of projects) {
        for (let group of Object.keys(project.tags)) {
            if (!tagList.hasOwnProperty(group)) {
                tagList[group] = []
                enabledTags[group] = []
            }

            for (let tag of project.tags[group]) {
                if (tagList[group].indexOf(tag) === -1) {
                    tagList[group].push(tag)
                }
            }
        }
    }

    // @ts-ignore
    let visibleProjects = []

    function updateVisibleProjects() {
        visibleProjects = []        

        for (let project of projects) {
            // @ts-ignore
            let show = true

            for (let group of Object.keys(project.tags)) {
                if (enabledTags[group].length > 0) {
                    // @ts-ignore
                    if (enabledTags[group].filter(element => project.tags[group].includes(element)).length === 0) {
                        show = false
                    }
                }
            }

            if (show === true) {
                visibleProjects.push(project)
                visibleProjects = visibleProjects;
            }
        }
    }

    /**
     * @param {{ detail: { toggle: boolean; group: string; tag: string; }; }} event
     */
    function handleTagEvent(event) {
        if (event.detail.toggle) {
            enabledTags[event.detail.group].push(event.detail.tag)
            enabledTags = enabledTags;
        } else {
            enabledTags[event.detail.group].splice(enabledTags[event.detail.group].indexOf(event.detail.tag), 1);
            enabledTags = enabledTags;
        }

        updateVisibleProjects()
    }

    updateVisibleProjects()
</script>
<div class="border border-gray-500 rounded-lg p-5 m-5">
    <div class="inline-flex">
        {#each Object.keys(tagList) as group}
            <TagGroup>
                {#each tagList[group] as tag}
                    <TagButton {tag} {group} on:tagEvent={handleTagEvent} />
                {/each}
            </TagGroup>
        {/each}
    </div>
    <div class="grid grid-cols-3 gap-4">
        {#each visibleProjects as {title, description, href, tags}}
            <GridItem {description} {title} {href} />
        {/each}
    </div>
</div>