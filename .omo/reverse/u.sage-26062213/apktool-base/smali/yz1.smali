.class public final Lyz1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lzv;


# instance fields
.field public final synthetic a:Lzz1;

.field public final synthetic b:Lw33;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lzz1;Lw33;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lyz1;->a:Lzz1;

    .line 5
    .line 6
    iput-object p2, p0, Lyz1;->b:Lw33;

    .line 7
    .line 8
    iput p3, p0, Lyz1;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lyz1;->b:Lw33;

    .line 2
    .line 3
    iget-object v0, v0, Lw33;->n:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lvz1;

    .line 6
    .line 7
    iget v1, p0, Lyz1;->c:I

    .line 8
    .line 9
    iget-object p0, p0, Lyz1;->a:Lzz1;

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lzz1;->G0(Lvz1;I)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method
