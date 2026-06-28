.class public abstract Loa3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lna3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Leu2;

    .line 2
    .line 3
    const/high16 v1, 0x42480000    # 50.0f

    .line 4
    .line 5
    invoke-direct {v0, v1}, Leu2;-><init>(F)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lna3;

    .line 9
    .line 10
    invoke-direct {v1, v0, v0, v0, v0}, Lna3;-><init>(Lci0;Lci0;Lci0;Lci0;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Loa3;->a:Lna3;

    .line 14
    .line 15
    return-void
.end method

.method public static final a(F)Lna3;
    .locals 1

    .line 1
    new-instance v0, Ldw0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ldw0;-><init>(F)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lna3;

    .line 7
    .line 8
    invoke-direct {p0, v0, v0, v0, v0}, Lna3;-><init>(Lci0;Lci0;Lci0;Lci0;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
