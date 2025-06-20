import { Arguments } from "@mysten/sui/transactions";
import { SuiClient, Transaction } from "@mysten/sui/client";
import { getFullnodeUrl } from "@mysten/sui/client";
import { fromBase64 } from "@mysten/sui/utils";
import { Ed25519Keypair } from "@mysten/sui/keypairs/ed25519";

const client = new SuiClient({url: rpcUrl});
const secretKey = fromBase64('AAGBPmRnaZqKB41nIIn/yG028dsKYuHpCWfqU06nTmKJ');
const keypair = Ed25519Keypair.fromSecretKey(secretKey);


const AddQuestion = () => {
    async function addQuestion() {

        const tx = new Transaction();
        tx.setSender(keypair.toSuiAddress())
        tx.setGasBudget(100000000);
        tx.setGasPayment([{objectId: '0xace29298104e9f8a355d4498e032c2304997f9a048947cee86625b9e402e0cf4 ',
             version: '447320770',
              digest: ''}]);
        tx.moveCall ({
            package: '0x67c96623968e700818a49a570d2d3fd58072ab17eb7021e386dc5d2baf515c95',
            module: 'wwtbas',
            function: 'add_question',
            Arguments: [tx.pure.address('0x67c96623968e700818a49a570d2d3fd58072ab17eb7021e386dc5d2baf515c95'), tx.pure.string('What is your name?')],
        })
        client.signAndExecuteTransaction({signer: Keypair, transaction: tx})
        .catch((e)=>{
            console.log(e);
        }).then((res) => {
            console.log(res);
        });
    }
    return (
        
            <div>
                Add Question Component
            </div>
    )

    addQuestion();
    }

export default AddQuestion
