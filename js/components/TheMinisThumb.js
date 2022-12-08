export default {
    name:"TheMinisThumb",

    emits: ['loadlbdata'],

    props: {
        minis: Object
    },

    template:`
    <li @click="loadLBData">
        <img :src='"images/" + minis.min_biopic' alt="minis img" style="width: 390px;" >
        
        <h5>{{minis.min_name}}</h5>
    </li>
    `,

    methods: {
        loadLBData() {
           this.$emit('loadlbdata', this.minis);
        }
    }
}

//The template needs a container that wraps everything
//Every component follows this structure