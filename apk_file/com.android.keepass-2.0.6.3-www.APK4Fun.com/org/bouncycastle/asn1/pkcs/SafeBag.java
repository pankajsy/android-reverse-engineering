package org.bouncycastle.asn1.pkcs;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERObjectIdentifier;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;

public class SafeBag
        extends ASN1Encodable {
    ASN1Set bagAttributes;
    DERObjectIdentifier bagId;
    DERObject bagValue;

    public SafeBag(ASN1Sequence paramASN1Sequence) {
        this.bagId = ((DERObjectIdentifier) paramASN1Sequence.getObjectAt(0));
        this.bagValue = ((DERTaggedObject) paramASN1Sequence.getObjectAt(1)).getObject();
        if (paramASN1Sequence.size() == 3) {
            this.bagAttributes = ((ASN1Set) paramASN1Sequence.getObjectAt(2));
        }
    }

    public SafeBag(DERObjectIdentifier paramDERObjectIdentifier, DERObject paramDERObject) {
        this.bagId = paramDERObjectIdentifier;
        this.bagValue = paramDERObject;
        this.bagAttributes = null;
    }

    public SafeBag(DERObjectIdentifier paramDERObjectIdentifier, DERObject paramDERObject, ASN1Set paramASN1Set) {
        this.bagId = paramDERObjectIdentifier;
        this.bagValue = paramDERObject;
        this.bagAttributes = paramASN1Set;
    }

    public ASN1Set getBagAttributes() {
        return this.bagAttributes;
    }

    public DERObjectIdentifier getBagId() {
        return this.bagId;
    }

    public DERObject getBagValue() {
        return this.bagValue;
    }

    public DERObject toASN1Object() {
        ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
        localASN1EncodableVector.add(this.bagId);
        localASN1EncodableVector.add(new DERTaggedObject(0, this.bagValue));
        if (this.bagAttributes != null) {
            localASN1EncodableVector.add(this.bagAttributes);
        }
        return new DERSequence(localASN1EncodableVector);
    }
}


/* Location:              /home/pankaj/reverse_engineering/dex2jar-2.0/classes-dex2jar.jar!/org/bouncycastle/asn1/pkcs/SafeBag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */