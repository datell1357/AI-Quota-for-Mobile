.class public Lvg0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final c:Ljava/util/logging/Logger;

.field public static final d:Lvg0;


# instance fields
.field public final a:Lku2;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lvg0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lvg0;->c:Ljava/util/logging/Logger;

    .line 12
    .line 13
    new-instance v0, Lvg0;

    .line 14
    .line 15
    invoke-direct {v0}, Lvg0;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lvg0;->d:Lvg0;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lvg0;->a:Lku2;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lvg0;->b:I

    return-void
.end method

.method public constructor <init>(Lvg0;Lku2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lvg0;->a:Lku2;

    .line 8
    .line 9
    iget p1, p1, Lvg0;->b:I

    .line 10
    .line 11
    add-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    iput p1, p0, Lvg0;->b:I

    .line 14
    .line 15
    const/16 p0, 0x3e8

    .line 16
    .line 17
    if-ne p1, p0, :cond_0

    .line 18
    .line 19
    sget-object p0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 20
    .line 21
    new-instance p1, Ljava/lang/Exception;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    .line 24
    .line 25
    .line 26
    sget-object p2, Lvg0;->c:Ljava/util/logging/Logger;

    .line 27
    .line 28
    const-string v0, "Context ancestry chain length is abnormally long. This suggests an error in application code. Length exceeded: 1000"

    .line 29
    .line 30
    invoke-virtual {p2, p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
