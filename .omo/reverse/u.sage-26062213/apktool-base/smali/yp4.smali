.class public final Lyp4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcu3;


# static fields
.field public static final o:Lyp4;


# instance fields
.field public final n:Lfu3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lyp4;

    .line 2
    .line 3
    invoke-direct {v0}, Lyp4;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lyp4;->o:Lyp4;

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
    new-instance v0, Lzp4;

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
    iput-object v1, p0, Lyp4;->n:Lfu3;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()Lzp4;
    .locals 0

    .line 1
    iget-object p0, p0, Lyp4;->n:Lfu3;

    .line 2
    .line 3
    iget-object p0, p0, Lfu3;->n:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lzp4;

    .line 6
    .line 7
    return-object p0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lyp4;->a()Lzp4;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
