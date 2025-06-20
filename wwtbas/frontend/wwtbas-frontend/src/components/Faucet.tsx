import { getFaucetHost, requestSuiFromFaucetV2 } from '@mysten/sui/faucet';
import { useEffect } from 'react';

const Faucet = () => {

    useEffect(()=> {
        async function fetchFaucet () {
            let headers = new Headers();
            headers.append('Access-Control-Allow-Origin', '*');
           await requestSuiFromFaucetV2({
            host: getFaucetHost('localnet'),
            recipient: '0x5884e45f7d154254ec1d1fe4cf0342be771769e6bdcbd8b148e1962a0ff0a8a6',
            }).catch((error) => {
                console.log(error);
            }).then((response) => {
                console.log(response); 
        }); 
    }
        fetchFaucet();
}, []);   
    return (
        <div>
            Faucet
        </div>
    )
}

export default Faucet;