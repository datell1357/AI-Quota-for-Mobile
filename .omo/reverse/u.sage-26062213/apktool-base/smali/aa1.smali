.class public final Laa1;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic o:Lw33;

.field public final synthetic p:I


# direct methods
.method public constructor <init>(ILw33;)V
    .locals 0

    .line 1
    iput-object p2, p0, Laa1;->o:Lw33;

    .line 2
    .line 3
    iput p1, p0, Laa1;->p:I

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lka1;

    .line 2
    .line 3
    iget v0, p0, Laa1;->p:I

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lka1;->N0(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p0, p0, Laa1;->o:Lw33;

    .line 14
    .line 15
    iput-object p1, p0, Lw33;->n:Ljava/lang/Object;

    .line 16
    .line 17
    return-object p1
.end method
