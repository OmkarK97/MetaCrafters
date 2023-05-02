const {
    Connection,
    PublicKey,
    clusterApiUrl,
    Keypair,
    LAMPORTS_PER_SOL,
    Transaction,
    SystemProgram,
    sendAndConfirmTransaction
} = require("@solana/web3.js");

const DEMO_FROM_SECRET_KEY = new Uint8Array(
    [
        134, 125, 1, 90, 215, 76, 239, 48, 228, 193, 93,
        121, 37, 17, 133, 180, 176, 182, 226, 66, 68, 224,
        183, 144, 17, 176, 82, 165, 71, 113, 78, 82, 22,
        5, 83, 36, 28, 89, 44, 128, 16, 190, 128, 130,
        38, 30, 177, 194, 118, 136, 48, 111, 167, 29, 137,
        107, 147, 248, 78, 166, 90, 145, 224, 226
    ]
);

const transferSol = async () => {
    const connection = new Connection(clusterApiUrl("devnet"), "confirmed");

    const from = Keypair.fromSecretKey(DEMO_FROM_SECRET_KEY);

    const to = Keypair.generate();

    console.log("Airdropping some SOL to sender wallet!");
    let fromAirDropSignature;
    try {
        fromAirDropSignature = await connection.requestAirdrop(
            new PublicKey(from.publicKey),
            2 * LAMPORTS_PER_SOL
        );
    } catch (err) {
        console.error("Failed to request airdrop:", err);
        return;
    }

    let latestBlockHash = await connection.getLatestBlockhash();

    try {
        await connection.confirmTransaction(
            fromAirDropSignature,
            { skipPreflight: true }
        );
    } catch (err) {
        console.error("Failed to confirm airdrop transaction:", err);
        return;
    }

    console.log("Airdrop completed for the sender account!");

    const lamportsToSend = LAMPORTS_PER_SOL / 100;
    const transaction = new Transaction().add(
        SystemProgram.transfer({
            fromPubkey: from.publicKey,
            toPubkey: to.publicKey,
            lamports: lamportsToSend
        })
    );

    try {
        const signature = await sendAndConfirmTransaction(
            connection,
            transaction,
            [from]
        );
        console.log(
            `Sent ${lamportsToSend} lamports to ${to.publicKey.toBase58()} with signature ${signature}.`
        );
    } catch (err) {
        console.error(`Failed to send ${lamportsToSend} lamports to ${to.publicKey.toBase58()}:`, err);
        return;
    }
};

transferSol();