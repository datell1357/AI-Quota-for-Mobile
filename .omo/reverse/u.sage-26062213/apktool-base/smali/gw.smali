.class public final Lgw;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lun0;


# instance fields
.field public final a:Lvh3;

.field public final b:Lv31;


# direct methods
.method public constructor <init>(Lvh3;Lv31;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgw;->a:Lvh3;

    .line 5
    .line 6
    iput-object p2, p0, Lgw;->b:Lv31;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lzp3;Ler2;)Liw;
    .locals 2

    .line 1
    new-instance v0, Liw;

    .line 2
    .line 3
    iget-object p1, p1, Lzp3;->a:Lpo1;

    .line 4
    .line 5
    iget-object v1, p0, Lgw;->a:Lvh3;

    .line 6
    .line 7
    iget-object p0, p0, Lgw;->b:Lv31;

    .line 8
    .line 9
    invoke-direct {v0, p1, p2, v1, p0}, Liw;-><init>(Lpo1;Ler2;Lvh3;Lv31;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method
