export default {
    name:"TheHeroThumb",

    emits: ['loadlbdata'],

    props: {
        hero: Object
    },

    template:`
    <li @click="loadLBData">
        <img :src='"images/" + hero.min_biopic' alt="hero img" style="width: 390px;" >
        <!-- <div class="sprite" id="cap"></div> -->
        <h5>{{hero.min_name}}</h5>
    </li>
    `,

    methods: {
        loadLBData() {
           this.$emit('loadlbdata', this.hero);
        }
    }
}

//The template needs a container that wraps everything
//Every component follows this structure