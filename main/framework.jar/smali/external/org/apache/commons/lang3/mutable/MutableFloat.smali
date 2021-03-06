.class public Lexternal/org/apache/commons/lang3/mutable/MutableFloat;
.super Ljava/lang/Number;
.source "MutableFloat.java"

# interfaces
.implements Lexternal/org/apache/commons/lang3/mutable/Mutable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lexternal/org/apache/commons/lang3/mutable/MutableFloat;",
        ">;",
        "Lexternal/org/apache/commons/lang3/mutable/Mutable",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x158f131a2L


# instance fields
.field private value:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .registers 2
    .param p1    # F

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput p1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 3
    .param p1    # Ljava/lang/Number;

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void
.end method


# virtual methods
.method public add(F)V
    .registers 3
    .param p1    # F

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    add-float/2addr v0, p1

    iput v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .registers 4
    .param p1    # Ljava/lang/Number;

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void
.end method

.method public compareTo(Lexternal/org/apache/commons/lang3/mutable/MutableFloat;)I
    .registers 4
    .param p1    # Lexternal/org/apache/commons/lang3/mutable/MutableFloat;

    iget v0, p1, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    iget v1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->compareTo(Lexternal/org/apache/commons/lang3/mutable/MutableFloat;)I

    move-result v0

    return v0
.end method

.method public decrement()V
    .registers 3

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000

    sub-float/2addr v0, v1

    iput v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void
.end method

.method public doubleValue()D
    .registers 3

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;

    instance-of v0, p1, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;

    if-eqz v0, :cond_16

    check-cast p1, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;

    iget v0, p1, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public floatValue()F
    .registers 2

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    return v0
.end method

.method public getValue()Ljava/lang/Float;
    .registers 2

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->getValue()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public increment()V
    .registers 3

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000

    add-float/2addr v0, v1

    iput v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void
.end method

.method public intValue()I
    .registers 2

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    float-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .registers 2

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .registers 2

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .registers 3

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public setValue(F)V
    .registers 2
    .param p1    # F

    iput p1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .registers 3
    .param p1    # Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(F)V
    .registers 3
    .param p1    # F

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    sub-float/2addr v0, p1

    iput v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .registers 4
    .param p1    # Ljava/lang/Number;

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    return-void
.end method

.method public toFloat()Ljava/lang/Float;
    .registers 2

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
