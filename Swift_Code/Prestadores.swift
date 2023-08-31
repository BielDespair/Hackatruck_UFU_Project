//
//  Prestadores.swift
//  HelpConstructions
//
//  Created by Student08 on 21/08/23.
//

import Foundation


//struct Avaliation: Codable, Hashable {
//    let id: Int
//    let rating: Int
//    let description: String
//    let client: ProfileClient
//}



struct Estrela: Identifiable {
    let id: UUID = UUID()
    let color: String;
}

struct Resenha: Identifiable {
    let id: UUID = UUID()
    let foto: String
    let nome: String
    let resenha: String
    let estrelas: [Estrela]
}

struct Cargo: Identifiable {
    let id: UUID = UUID()
    let foto: String
    let nome: String
}
struct ProfilePrestador: Identifiable{
    let id: Int
    let foto: String
    let nome: String
    let descricao: String
    let cargos: [Cargo]
    let avaliacao: String
    let estrelas: [Estrela]
    let renomado: Bool
    let tempo: String
    let servicos: String
    let resenhas: [Resenha]
//    let categoria: categorias?
}
//"https://scontent.fbsb9-1.fna.fbcdn.net/v/t1.6435-9/183555229_2088525231304909_3733017904157260684_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_eui2=AeHMMhh0CbHa3D7XHUW-PArqkLGXjYkyeGSQsZeNiTJ4ZKQTDPkv0SB3ZYRAKgpwi11_BRgThovDqPVER6yFjbqp&_nc_ohc=gSW8MAr_5AUAX8Ho3ml&_nc_ht=scontent.fbsb9-1.fna&oh=00_AfBEUfgnpoqx4qQZWKjF_gngWHXDd8UgZdx4rTMajNpqgA&oe=650F45E7"

class Cargos {
    let encanador: Cargo = Cargo(foto: "pipe.and.drop", nome: "Encanador")
    let ar: Cargo = Cargo(foto: "snowflake", nome: "Ar condicionado")
    let eletricista: Cargo = Cargo(foto: "bolt", nome: "Eletricista")
    let internet: Cargo = Cargo(foto: "network", nome: "Internet")
    let solar: Cargo = Cargo(foto: "sun.min.fill", nome: "Energia Solar")
    let pintor: Cargo = Cargo(foto: "paintbrush", nome: "Pintor")
    let construtor: Cargo = Cargo(foto: "building.2.crop.circle", nome: "Construtor")
}

class Avaliacao {
    let umaEstrelas: [Estrela] = [Estrela(color: "golden"),Estrela(color: "gray"),Estrela(color: "gray"),Estrela(color: "gray"),Estrela(color: "gray")]
    let duasEstrelas: [Estrela] = [Estrela(color: "golden"),Estrela(color: "golden"),Estrela(color: "gray"),Estrela(color: "gray"),Estrela(color: "gray")]
    let tresEstrelas: [Estrela] = [Estrela(color: "golden"),Estrela(color: "golden"),Estrela(color: "golden"),Estrela(color: "gray"),Estrela(color: "gray")]
    let quatroEstrelas: [Estrela] = [Estrela(color: "golden"),Estrela(color: "golden"),Estrela(color: "golden"),Estrela(color: "golden"),Estrela(color: "gray")]
    let cincoEstrelas: [Estrela] = [Estrela(color: "golden"),Estrela(color: "golden"),Estrela(color: "golden"),Estrela(color: "golden"),Estrela(color: "golden")]
}

let avaliacao: Avaliacao = Avaliacao()


let cargos = Cargos()

let prestadores: [ProfilePrestador] = [
    ProfilePrestador(
    id: 1,
    foto: "https://scontent.fbsb9-1.fna.fbcdn.net/v/t1.18169-9/14192503_1244868362191900_1098042842751230204_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHGjSifB0ZFb_u7h9VliSHzaX_fsW9z61Fpf9-xb3PrUZm95fuhMJxPw35Jl9-fyJcSdYZ61ETTHCKd7KtSyJXo&_nc_ohc=WskN41FTO88AX-nRboT&_nc_ht=scontent.fbsb9-1.fna&oh=00_AfBbDYMn4wGzUANjQ9y2J04vbI4TtIuW0D4YAnNswWitLA&oe=650F5F35",
    nome: "Mario",
    descricao: "Energia solar, eletricista e segurança eletrônica. Serviço de qualidade!",
    cargos: [cargos.solar, cargos.eletricista],
    avaliacao: "4.4",
    estrelas: avaliacao.quatroEstrelas,
    renomado: false, tempo: "1", servicos: "177", resenhas: [ana,marcos]),
    ProfilePrestador(
       id: 2,
       foto: "https://media.licdn.com/dms/image/C4E03AQF0brD7FVcLlA/profile-displayphoto-shrink_800_800/0/1516810976191?e=2147483647&v=beta&t=inCD4BCC4Ik0Jd8wA_wQ4B6IDzGIroT-G-sPjp5rcAY",
       nome: "Thiago",
       descricao: "Formado em engenharia elétrica, consultoria de rede elétrica, etc...",
       cargos: [cargos.eletricista, cargos.ar],
       avaliacao: "4.9",
       estrelas: avaliacao.cincoEstrelas,
       renomado: true,tempo: "1",
       servicos: "177",
       resenhas: [cleidy,jheniffer,ana,carla,rafael,marcos]),
    ProfilePrestador(
       id: 3,
       foto: "",
       nome: "Alex",
       descricao: "Encanador e pintor serviços residencial geral",
       cargos: [cargos.encanador, cargos.pintor],
       avaliacao: "1.3",
       estrelas: avaliacao.umaEstrelas,
       renomado: false,tempo: "1",
       servicos: "177",
       resenhas: [rafael]),
    ProfilePrestador(
       id: 4,
       foto: "",
       nome: "Sérgio",
       descricao: "Servente de pedreiro, serviços em geral, busco serviços",
       cargos: [cargos.construtor],
       avaliacao: "4.6",
       estrelas: avaliacao.cincoEstrelas,
       renomado: false, tempo: "1", servicos: "177", resenhas: [carla, rafael])
]
