.class public final Lov0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements La81;


# instance fields
.field public final n:La81;

.field public final o:Ldf1;


# direct methods
.method public constructor <init>(La81;Ldf1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lov0;->n:La81;

    .line 5
    .line 6
    iput-object p2, p0, Lov0;->o:Ldf1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Lb81;Ldh0;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lw33;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ljn2;->a:Lsg0;

    .line 7
    .line 8
    iput-object v1, v0, Lw33;->n:Ljava/lang/Object;

    .line 9
    .line 10
    new-instance v1, Lke;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, p0, v0, p1, v2}, Lke;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lov0;->n:La81;

    .line 17
    .line 18
    invoke-interface {p0, v1, p2}, La81;->b(Lb81;Ldh0;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object p1, Lri0;->n:Lri0;

    .line 23
    .line 24
    if-ne p0, p1, :cond_0

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    sget-object p0, Lt64;->a:Lt64;

    .line 28
    .line 29
    return-object p0
.end method
