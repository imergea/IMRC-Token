# IMRC – IMERGEA Credit Token

**Type**: ERC-20  
**Name**: IMERGEA Credit  
**Symbol**: IMRC  
**Decimals**: 18  
**Total Supply**: 100 IMRC

---

## 🧩 Concept

IMRC est un **token utilitaire premium** émis par IMERGEA.

Chaque IMRC représente **une journée complète de conseil stratégique**, incluant par exemple :

- Structuration de levée de fonds (equity & debt)  
- Conseil en M&A (buy-side / sell-side)  
- Analyse stratégique et financière  
- Support Teaser Deck & Information Memorandum  

> **1 IMRC = 1 day of IMERGEA strategic advisory.**

En plus de la journée de conseil, chaque détenteur d’IMRC bénéficie d’un **referral code** dédié pour l’IMERGEA Portal, géré off-chain (réductions, avantages, upgrades, etc.).

---

## 🎯 Utility & Usage

- Le détenteur d’IMRC peut transférer 1 IMRC au wallet IMERGEA pour régler une journée de consulting.  
- Une fois la journée réalisée, le token reste dans le wallet d’IMERGEA et peut être revendu ou réattribué à un autre client ou partenaire.  
- Les **referral codes** liés à IMRC sont gérés hors chaîne (dans les systèmes IMERGEA).

IMRC fonctionne comme un **crédit prépayé tokenisé**, transférable on-chain.

---

## 🔒 Tokenomics

- **Total supply fixe** : 100 IMRC, mintés une seule fois au déploiement.  
- Aucun mint supplémentaire n’est prévu.  
- 18 décimales (standard ERC-20) pour une compatibilité maximale avec les wallets et DEX.

---

## 🧱 Smart Contract

Contrat principal : `contracts/IMRC.sol`

```solidity
contract IMRC is ERC20 {
    constructor() ERC20("IMERGEA Credit", "IMRC") {
        _mint(msg.sender, 100 * 10 ** decimals());
    }
}
