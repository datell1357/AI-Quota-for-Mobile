.class public final Lu64;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Llx1;


# static fields
.field public static final b:Lu64;


# instance fields
.field public final synthetic a:Lvn2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lu64;

    .line 2
    .line 3
    invoke-direct {v0}, Lu64;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lu64;->b:Lu64;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lvn2;

    .line 5
    .line 6
    invoke-direct {v0}, Lvn2;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lu64;->a:Lvn2;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b(Lvn0;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lu64;->a:Lvn2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lvn2;->b(Lvn0;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lt64;->a:Lt64;

    .line 7
    .line 8
    return-object p0
.end method

.method public final c(Lkotlinx/serialization/json/internal/b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lt64;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lu64;->a:Lvn2;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lvn2;->c(Lkotlinx/serialization/json/internal/b;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final d()Lgi3;
    .locals 0

    .line 1
    iget-object p0, p0, Lu64;->a:Lvn2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lvn2;->d()Lgi3;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
