package org.bouncycastle.crypto;

public class StreamBlockCipher
        implements StreamCipher {
    private BlockCipher cipher;
    private byte[] oneByte = new byte[1];

    public StreamBlockCipher(BlockCipher paramBlockCipher) {
        if (paramBlockCipher.getBlockSize() != 1) {
            throw new IllegalArgumentException("block cipher block size != 1.");
        }
        this.cipher = paramBlockCipher;
    }

    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName();
    }

    public void init(boolean paramBoolean, CipherParameters paramCipherParameters) {
        this.cipher.init(paramBoolean, paramCipherParameters);
    }

    public void processBytes(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
            throws DataLengthException {
        if (paramInt3 + paramInt2 > paramArrayOfByte2.length) {
            throw new DataLengthException("output buffer too small in processBytes()");
        }
        int i = 0;
        while (i != paramInt2) {
            this.cipher.processBlock(paramArrayOfByte1, paramInt1 + i, paramArrayOfByte2, paramInt3 + i);
            i += 1;
        }
    }

    public void reset() {
        this.cipher.reset();
    }

    public byte returnByte(byte paramByte) {
        this.oneByte[0] = paramByte;
        this.cipher.processBlock(this.oneByte, 0, this.oneByte, 0);
        return this.oneByte[0];
    }
}


/* Location:              /home/pankaj/reverse_engineering/dex2jar-2.0/classes-dex2jar.jar!/org/bouncycastle/crypto/StreamBlockCipher.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */