.class public abstract synthetic Lnu1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# direct methods
.method public static bridge synthetic A()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Ljava/time/OffsetDateTime;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic B()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Ljava/time/OffsetTime;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic C()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Ljava/time/Period;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic D()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Ljava/time/Year;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic a(Ljava/time/Instant;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic b(Ljava/time/LocalDate;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic c(Ljava/time/LocalTime;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic d(Ljava/time/Instant;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static bridge synthetic e()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Ljava/time/Duration;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic f(JJ)Ljava/time/Instant;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic g(Ljava/lang/Object;)Ljava/time/Instant;
    .locals 0

    .line 1
    check-cast p0, Ljava/time/Instant;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic h(III)Ljava/time/LocalDate;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic i(Ljava/lang/Object;)Ljava/time/LocalDate;
    .locals 0

    .line 1
    check-cast p0, Ljava/time/LocalDate;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic j(Ljava/time/LocalDateTime;)Ljava/time/LocalDate;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic k(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic l(IIII)Ljava/time/LocalTime;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/time/LocalTime;
    .locals 0

    .line 1
    check-cast p0, Ljava/time/LocalTime;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic n(Ljava/time/ZonedDateTime;)Ljava/time/ZoneId;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic o(Ljava/time/LocalDate;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonthValue()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic p(Ljava/time/LocalTime;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic q()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Ljava/time/YearMonth;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic r(Ljava/lang/Object;)Ljava/time/LocalDate;
    .locals 0

    .line 1
    check-cast p0, Ljava/time/LocalDate;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic s(Ljava/lang/Object;)Ljava/time/LocalTime;
    .locals 0

    .line 1
    check-cast p0, Ljava/time/LocalTime;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic t(Ljava/time/LocalDate;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfMonth()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic u(Ljava/time/LocalTime;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/time/LocalTime;->getSecond()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic v()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Ljava/time/ZonedDateTime;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic w(Ljava/time/LocalTime;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/time/LocalTime;->getNano()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static bridge synthetic x()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Ljava/time/Instant;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic y()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Ljava/time/LocalDateTime;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic z()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Ljava/time/MonthDay;

    .line 2
    .line 3
    return-object v0
.end method
