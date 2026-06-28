.class public final Lkf2;
.super Ljf2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final n:Ljava/lang/Object;

.field public final o:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lkf2;->n:Ljava/lang/Object;

    .line 5
    .line 6
    iput p1, p0, Lkf2;->o:I

    .line 7
    .line 8
    const-string p0, "count"

    .line 9
    .line 10
    invoke-static {p1, p0}, Lht4;->i(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    iget p0, p0, Lkf2;->o:I

    .line 2
    .line 3
    return p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lkf2;->n:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method
