package defpackage;

import android.content.Context;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class pv1 {
    public final /* synthetic */ int a;
    public final String b;
    public final boolean c;
    public final boolean d;
    public final Object e;
    public final Object f;

    public pv1() {
        this.a = 0;
        this.c = true;
        this.b = "    ";
        this.e = "type";
        this.d = true;
        this.f = h50.o;
    }

    public String toString() {
        switch (this.a) {
            case 0:
                return "JsonConfiguration(encodeDefaults=false, ignoreUnknownKeys=false, isLenient=false, allowStructuredMapKeys=false, prettyPrint=false, explicitNulls=" + this.c + ", prettyPrintIndent='" + this.b + "', coerceInputValues=false, useArrayPolymorphism=false, classDiscriminator='" + ((String) this.e) + "', allowSpecialFloatingPointValues=false, useAlternativeNames=" + this.d + ", namingStrategy=null, decodeEnumsCaseInsensitive=false, allowTrailingComma=false, allowComments=false, classDiscriminatorMode=" + ((h50) this.f) + ')';
            default:
                return super.toString();
        }
    }

    public pv1(Context context, String str, d90 d90Var, boolean z, boolean z2) {
        this.a = 1;
        context.getClass();
        d90Var.getClass();
        this.e = context;
        this.b = str;
        this.f = d90Var;
        this.c = z;
        this.d = z2;
    }
}
