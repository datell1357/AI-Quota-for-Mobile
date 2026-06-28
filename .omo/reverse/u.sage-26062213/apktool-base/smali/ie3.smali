.class public final Lie3;
.super Lle3;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lge3;


# instance fields
.field public final o:Lrb3;


# direct methods
.method public constructor <init>(Lrb3;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lle3;-><init>(Lnp3;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lie3;->o:Lrb3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILkm1;)Ljava/net/Socket;
    .locals 0

    .line 1
    iget-object p0, p0, Lie3;->o:Lrb3;

    .line 2
    .line 3
    const/4 p4, 0x1

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lrb3;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method
