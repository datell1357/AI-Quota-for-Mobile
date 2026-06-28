.class public final Lna2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lxs1;


# instance fields
.field public final a:Lne1;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Lvq;


# direct methods
.method public constructor <init>(Lvf2;Lne1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lna2;->a:Lne1;

    .line 5
    .line 6
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lna2;->b:Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    iget-object p1, p1, Lvf2;->a:Lwl3;

    .line 14
    .line 15
    new-instance p2, Lvq;

    .line 16
    .line 17
    const/4 v0, 0x6

    .line 18
    invoke-direct {p2, v0, p1, p0}, Lvq;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lna2;->c:Lvq;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a()La81;
    .locals 0

    .line 1
    iget-object p0, p0, Lna2;->c:Lvq;

    .line 2
    .line 3
    return-object p0
.end method
