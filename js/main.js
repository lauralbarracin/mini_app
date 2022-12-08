//import components first!!
//YOU creeated the name HeroThumb - choose any name
import MinisThumb from './components/TheMinisThumb.js';
import LightBox from './components/TheLightbox.js';

(() => {
    // create vue instance here
    const { createApp } = Vue

    createApp({
        created() {
            //ALWAYS get your remote data here
            fetch('./data.json') //get the data file
                .then(res => res.json()) // the response is the data file returning in a json
                .then(data => this.minisData = data)//heroDAta is the json file
            .catch(error => console.error(error));   
        },

        data() {
            return {
                minisData: {},
                lbData: {},
                showLightbox: false //conectar con html porque deben ir juntas
            }
        },

        components: {
            theministhumb: MinisThumb,
            thelightbox: LightBox
        },

        methods: {
            loadLightbox(minis) {
                this.lbData = minis;

                //showLightbox 
                this.showLightbox = true;
            }

        }
    }).mount('#app')
})()

//*theherothumb is replaced with theministhumb created by developer 
//theministhumb becomes a tag at HTML
//Click event in a child