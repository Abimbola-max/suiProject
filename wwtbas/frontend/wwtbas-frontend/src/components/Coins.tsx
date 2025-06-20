import { getFullnodeUrl, SuiClient } from "@mysten/sui/client"
import { useEffect, useState } from "react";


const Coins = () => {


    const rpcUrl = getFullnodeUrl('testnet');

    const client = new SuiClient({url: rpcUrl});

    const [data, setData] = useState([])

    useEffect(()=> {
        async function fetchCoinsFor(address:string) {
            await client.getCoins({
                owner: address,
            }).catch((e)=> {
                console.log(e);
            }).then((res) => {
                console.log(res);
            });
            
        }
        fetchCoinsFor('0x5884e45f7d154254ec1d1fe4cf0342be771769e6bdcbd8b148e1962a0ff0a8a6');
    }, []);
    return  (
        <div>
            {data.map((coin, indexedDB) => (
                
            )}
        </div>
    )
}
export default Coins;