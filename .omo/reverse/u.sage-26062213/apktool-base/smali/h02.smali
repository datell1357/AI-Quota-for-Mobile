.class public final Lh02;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ltr3;


# instance fields
.field public final n:Lws2;

.field public o:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    div-int/lit8 v0, p1, 0x1e

    .line 5
    .line 6
    mul-int/lit8 v0, v0, 0x1e

    .line 7
    .line 8
    add-int/lit8 v1, v0, -0x64

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit16 v0, v0, 0x82

    .line 16
    .line 17
    invoke-static {v1, v0}, Lix;->a0(II)Lms1;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lw13;->S:Lw13;

    .line 22
    .line 23
    new-instance v2, Lws2;

    .line 24
    .line 25
    invoke-direct {v2, v0, v1}, Lws2;-><init>(Ljava/lang/Object;Lw13;)V

    .line 26
    .line 27
    .line 28
    iput-object v2, p0, Lh02;->n:Lws2;

    .line 29
    .line 30
    iput p1, p0, Lh02;->o:I

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lh02;->n:Lws2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lws2;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lms1;

    .line 8
    .line 9
    return-object p0
.end method
