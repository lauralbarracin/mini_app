//import components first!!
//YOU creeated the name HeroThumb - choose any name
import HeroThumb from './components/TheHeroThumbnail.js';
import LightBox from './components/TheLightbox.js';

(() => {
    // create vue instance here
    const { createApp } = Vue

    createApp({
        created() {
            //ALWAYS get your remote data here
            fetch('./data.json') //get the data file
                .then(res => res.json()) // the response is the data file returning in a json
                .then(data => this.heroData = data)//heroDAta is the json file
            .catch(error => console.error(error));   
        },

        data() {
            return {
                heroData: {},
                lbData: {},
                showLB: false
            }
        },

        components: {
            theherothumb: HeroThumb,
            thelightbox: LightBox
        },

        methods: {
            loadLightbox(hero) {
                this.lbData = hero;

                //showLightbox 
                this.showLB = true;
            }

        }
    }).mount('#app')
})()

//*theherothumb is created by you as well
//theherothumb becomes a tag at HTML
//Click event in a child