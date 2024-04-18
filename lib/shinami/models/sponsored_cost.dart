class SponsoredCost {
  SponsoredCost({
    required this.computationCost,
    required this.storageCost,
    required this.storageRebate,
  });

  factory SponsoredCost.fromJson(Map<String, dynamic> json) {
    return SponsoredCost(
      computationCost: json['computationCost'] as String,
      storageCost: json['storageCost'] as String,
      storageRebate: json['storageRebate'] as String,
    );
  }
  String computationCost;
  String storageCost;
  String storageRebate;
}
