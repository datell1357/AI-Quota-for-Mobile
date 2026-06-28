.class public final Lhq4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcu3;


# static fields
.field public static final o:Lhq4;


# instance fields
.field public final n:Lfu3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lhq4;

    .line 2
    .line 3
    invoke-direct {v0}, Lhq4;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lhq4;->o:Lhq4;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Liq4;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lfu3;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lfu3;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lhq4;->n:Lfu3;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lhq4;->n:Lfu3;

    .line 2
    .line 3
    iget-object p0, p0, Lfu3;->n:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Liq4;

    .line 6
    .line 7
    return-object p0
.end method
