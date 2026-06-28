.class Lcom/google/api/client/json/gson/GsonGenerator;
.super Lcom/google/api/client/json/JsonGenerator;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/json/gson/GsonGenerator$StringNumber;
    }
.end annotation


# instance fields
.field private final factory:Lcom/google/api/client/json/gson/GsonFactory;

.field private final writer:Lbx1;


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/gson/GsonFactory;Lbx1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/json/JsonGenerator;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/api/client/json/gson/GsonGenerator;->factory:Lcom/google/api/client/json/gson/GsonFactory;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lbx1;

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    iput p0, p2, Lbx1;->u:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lbx1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lbx1;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public enablePrettyPrint()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lbx1;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lyb1;->e:Lyb1;

    .line 7
    .line 8
    new-instance v1, Lyb1;

    .line 9
    .line 10
    iget-object v2, v0, Lyb1;->a:Ljava/lang/String;

    .line 11
    .line 12
    iget-boolean v0, v0, Lyb1;->c:Z

    .line 13
    .line 14
    const-string v3, "  "

    .line 15
    .line 16
    invoke-direct {v1, v2, v3, v0}, Lyb1;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lbx1;->R(Lyb1;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public flush()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lbx1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lbx1;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->factory:Lcom/google/api/client/json/gson/GsonFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public writeBoolean(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lbx1;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lbx1;->o0(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public writeEndArray()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lbx1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lbx1;->A()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public writeEndObject()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lbx1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lbx1;->B()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lbx1;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lbx1;->F(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public writeNull()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lbx1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lbx1;->L()Lbx1;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public writeNumber(D)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lbx1;

    invoke-virtual {p0, p1, p2}, Lbx1;->Z(D)V

    return-void
.end method

.method public writeNumber(F)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lbx1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lbx1;->p0()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lbx1;->u:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "Numeric values must be finite, but was "

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lbx1;->b()V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lbx1;->n:Ljava/io/Writer;

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public writeNumber(I)V
    .locals 2

    .line 60
    iget-object p0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lbx1;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lbx1;->i0(J)V

    return-void
.end method

.method public writeNumber(J)V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lbx1;

    invoke-virtual {p0, p1, p2}, Lbx1;->i0(J)V

    return-void
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object p0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lbx1;

    new-instance v0, Lcom/google/api/client/json/gson/GsonGenerator$StringNumber;

    invoke-direct {v0, p1}, Lcom/google/api/client/json/gson/GsonGenerator$StringNumber;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lbx1;->j0(Ljava/lang/Number;)V

    return-void
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lbx1;

    invoke-virtual {p0, p1}, Lbx1;->j0(Ljava/lang/Number;)V

    return-void
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lbx1;

    invoke-virtual {p0, p1}, Lbx1;->j0(Ljava/lang/Number;)V

    return-void
.end method

.method public writeStartArray()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lbx1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lbx1;->j()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public writeStartObject()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lbx1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lbx1;->r()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/json/gson/GsonGenerator;->writer:Lbx1;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lbx1;->n0(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
