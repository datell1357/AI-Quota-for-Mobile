.class public final Lbi2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Llb;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    const-class v0, Lbi2;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Llb;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Llb;-><init>(Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lbi2;->a:Llb;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Lyh2;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Llb;

    .line 26
    iget-object v1, p1, Lyh2;->o:Lqi2;

    .line 27
    iget-object v1, v1, Lqi2;->o:Lgg;

    .line 28
    iget v1, v1, Lgg;->a:I

    .line 29
    invoke-direct {v0, p1, v1}, Llb;-><init>(Lyh2;I)V

    iput-object v0, p0, Lbi2;->a:Llb;

    return-void
.end method
