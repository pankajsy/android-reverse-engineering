package org.bouncycastle.crypto.params;

import org.bouncycastle.crypto.CipherParameters;

public class ParametersWithIV
  implements CipherParameters
{
  private byte[] iv;
  private CipherParameters parameters;
  
  public ParametersWithIV(CipherParameters paramCipherParameters, byte[] paramArrayOfByte)
  {
    this(paramCipherParameters, paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public ParametersWithIV(CipherParameters paramCipherParameters, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.iv = new byte[paramInt2];
    this.parameters = paramCipherParameters;
    System.arraycopy(paramArrayOfByte, paramInt1, this.iv, 0, paramInt2);
  }
  
  public byte[] getIV()
  {
    return this.iv;
  }
  
  public CipherParameters getParameters()
  {
    return this.parameters;
  }
}


/* Location:              /home/pankaj/reverse_engineering/dex2jar-2.0/classes-dex2jar.jar!/org/bouncycastle/crypto/params/ParametersWithIV.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */