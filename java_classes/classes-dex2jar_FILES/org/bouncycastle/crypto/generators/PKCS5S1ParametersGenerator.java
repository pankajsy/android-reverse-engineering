package org.bouncycastle.crypto.generators;

import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.PBEParametersGenerator;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

public class PKCS5S1ParametersGenerator
  extends PBEParametersGenerator
{
  private Digest digest;
  
  public PKCS5S1ParametersGenerator(Digest paramDigest)
  {
    this.digest = paramDigest;
  }
  
  private byte[] generateDerivedKey()
  {
    byte[] arrayOfByte = new byte[this.digest.getDigestSize()];
    this.digest.update(this.password, 0, this.password.length);
    this.digest.update(this.salt, 0, this.salt.length);
    this.digest.doFinal(arrayOfByte, 0);
    int i = 1;
    while (i < this.iterationCount)
    {
      this.digest.update(arrayOfByte, 0, arrayOfByte.length);
      this.digest.doFinal(arrayOfByte, 0);
      i += 1;
    }
    return arrayOfByte;
  }
  
  public CipherParameters generateDerivedMacParameters(int paramInt)
  {
    return generateDerivedParameters(paramInt);
  }
  
  public CipherParameters generateDerivedParameters(int paramInt)
  {
    paramInt /= 8;
    if (paramInt > this.digest.getDigestSize()) {
      throw new IllegalArgumentException("Can't generate a derived key " + paramInt + " bytes long.");
    }
    return new KeyParameter(generateDerivedKey(), 0, paramInt);
  }
  
  public CipherParameters generateDerivedParameters(int paramInt1, int paramInt2)
  {
    paramInt1 /= 8;
    paramInt2 /= 8;
    if (paramInt1 + paramInt2 > this.digest.getDigestSize()) {
      throw new IllegalArgumentException("Can't generate a derived key " + (paramInt1 + paramInt2) + " bytes long.");
    }
    byte[] arrayOfByte = generateDerivedKey();
    return new ParametersWithIV(new KeyParameter(arrayOfByte, 0, paramInt1), arrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:              /home/pankaj/reverse_engineering/dex2jar-2.0/classes-dex2jar.jar!/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */