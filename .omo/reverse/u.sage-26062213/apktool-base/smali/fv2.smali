.class public final Lfv2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ltr2;


# instance fields
.field public n:Leb2;

.field public final o:Lk82;

.field public final p:Lek1;


# direct methods
.method public constructor <init>(Leb2;Lk82;Lek1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfv2;->n:Leb2;

    .line 5
    .line 6
    iput-object p2, p0, Lfv2;->o:Lk82;

    .line 7
    .line 8
    iput-object p3, p0, Lfv2;->p:Lek1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final w()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lfv2;->o:Lk82;

    .line 2
    .line 3
    invoke-virtual {p0}, Lk82;->o0()Lgy1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Lgy1;->B()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
