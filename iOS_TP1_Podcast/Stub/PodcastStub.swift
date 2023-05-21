//
//  PodcastStub.swift
//  iOS_TP1_Podcast
//
//  Created by Perderizet Maïa on 13/05/2023.
//

import Foundation

struct PodcastStub {
    static func getPodcast()->Podcast{
        return Podcast(id: 1,titre: "Le code a changé", auteur: "France Inter", description: "En quoi les technologies changent quelque chose à nos vies ? C'est ce qui justifie le titre de cette série : 'Le code a changé'. Parce que c'est autour de cette question du changement que tout va tourner pendant ces 20 épisodes Rendez-vous sur l'application Radio France pour découvrir des milliers d'autres podcasts.", note: 4.8, nbVote: 539, genre: "Actualités technologiques", rythme: nil, imageName: "LeCodeAChange", episodes: getListPodcastEpisode())
    }

    static func getListPodcast()->[Podcast]{
        return [
            Podcast(id: 1, titre: "Chaleur Humaine", auteur: "Le Monde", description: "Comment faire face au défi climatique ? Tous les mardis, Nabil Wakim et la rédaction du Monde invitent des experts pour comprendre les enjeux et trouver des solutions. Chaleur Humaine est aussi une newsletter. Inscrivez-vous pour recevoir chaque mardi notre sélection d'articles : https://www.lemonde.fr/newsletters/chaleur-humaine/ Hébergé par Acast. Visitez acast.com/privacy pour plus d'informations.", note: 4.8, nbVote: 460, genre: "Actualités", rythme: "Chaque Semaine", imageName: "ChaleurHumaine", episodes: getListPodcastEpisode()),
            Podcast(id: 2, titre: "Nadie Sabe Nada", auteur: "SER Podcast", description: "Andreu Buenafuente y Berto Romero se sientan frente a frente, micro a micro, e improvisan. ¿Qué puede salir mal? El humor de estos dos genios es oro para tus orejas. Ábrelas bien que, en el fondo, nadie sabe nada. En directo en Cadena Ser los sábados a las 12:00 y a cualquier hora si te suscribes.", note: 4.9, nbVote: 45, genre: "Humour", rythme: "Tous les jours", imageName: "NadieSabeNada", episodes: getListPodcastEpisode()),
            Podcast(id: 3, titre: "La science, CQFD", auteur: "France Culture", description: "Une heure de savoir autour des sciences, toutes les sciences, et sur les problématiques éthiques, politiques, économiques et sociales qui font l'actualité de la recherche. Du lundi au vendredi de 16h à 17h avec Natacha Triou. Rendez-vous sur l'application Radio France pour découvrir tous les autres épisodes.", note: 4.4, nbVote: 1800, genre: "Sciences", rythme: nil, imageName: "LeCodeAChange", episodes: []),
            Podcast(id: 4, titre: "Le code a changé", auteur: "France Inter", description: "En quoi les technologies changent quelque chose à nos vies ? C'est ce qui justifie le titre de cette série : 'Le code a changé'. Parce que c'est autour de cette question du changement que tout va tourner pendant ces 20 épisodes Rendez-vous sur l'application Radio France pour découvrir des milliers d'autres podcasts.", note: 4.8, nbVote: 539, genre: "Actualités technologiques", rythme: nil, imageName: "LaScienceSQFD", episodes: getListPodcastEpisode()),
            Podcast(id: 5, titre: "Open jazz", auteur: "France Musique", description: "L'actualité de tous les jazz et les grands rendez-vous de l'histoire du jazz. Rendez-vous sur l'application Radio France pour découvrir tous les autres épisodes.", note: 4.3, nbVote: 182, genre: "Musique", rythme: nil, imageName: "OpenJazz",  episodes: getListPodcastEpisode()),
        ]
    }
    
    static func getListPodcastEpisode()->[PodcastEpisode]{
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
        return [
            PodcastEpisode(id: 1, titre: "Audrey Dussutour : la blob-trotteuse", date: Date.now, description: "durée : 00:58:05 - La Science, CQFD - par : Natacha Triou - Des fourmis au blob, Audrey Dussutour n’a cessé d’explorer d’autres formes d’intelligence. Toujours prête à inventer de nouveaux moyens pour vulgariser les sciences, ses travaux mettent en question nos a priori quant à l'organisation collective des ces espèces. - invités : Audrey Dussutour Directrice de recherche au CNRS, au Centre de Recherches sur la Cognition Animale (CRCA) à l’Université Toulouse III – Paul Sabatier.", heures: 0, minutes: 58),
            PodcastEpisode(id: 2, titre: "Une toute nouvelle histoire de la colonisation de l'Europe par Homo Sapiens", date: Date.now.addingTimeInterval(-TimeInterval(1)), description: "durée : 00:06:03 - Le Journal des sciences - par : Alexandra Delbot - Au menu du journal des sciences : de nouvelles estimations de l’arrivée d’Homo Sapiens en Europe, la contribution d’incendies en Australie au phénomène La Niña, la publication du tout premier pangénome, et enfin des requins qui pratiquent l’apnée.", heures: 0, minutes: 6),
            PodcastEpisode(id: 3, titre: "Solaire spatial : tu veux ma photovoltaïque ?", date: Date.now.addingTimeInterval(-TimeInterval(2)), description: "durée : 00:58:18 - La Science, CQFD - par : Natacha Triou - Dans le cadre d’un objectif Net Zero d’ici à 2050, l’ESA, Caltech, la JAXA et la Chine pensent exploiter l’énergie solaire depuis l’espace, permettant une production d’énergie ne dépendant pas de la pluie et du beau temps. Le solaire spatial passera-t-il de la fiction à la réalité ? - invités : Leopold Summerer Responsable des concepts de projets avancés 'Heads of advanced concepts studies' de l'ESA.; Jean-Dominique Coste Chef de la fonction Blue Sky, chez Airbus.; Jérôme Perez Enseignant-chercheur en astrophysique théorique à l’ENSTA - Institut Polytechnique, à Paris", heures: 0, minutes: 58),
            PodcastEpisode(id: 4, titre: "L'homme peut-il accepter ses limites ?", date: Date.now.addingTimeInterval(-TimeInterval(7)), description: "durée : 00:04:30 - Le Pourquoi du comment : science - par : Gilles Bœuf - Dans les changements profonds que nous vivons aujourd’hui, sommes-nous prêts à accepter nos limites et à prendre en compte sérieusement toutes les « auto-menaces » que nous déclenchons autour de nous ?", heures: 0, minutes: 5),
            PodcastEpisode(id: 5, titre: "Des plantes carnivores composent leur menu d'insectes grâce aux odeurs qu'elles émettent", date: Date.now.addingTimeInterval(-TimeInterval(10)), description: "durée : 00:06:09 - Le Journal des sciences - par : Alexandra Delbot - Au menu du journal des sciences : des plantes carnivores qui composent leur menu d’insectes, Néandertal nous aurait donné son nez, les inégalités de genre s’observent dans le cerveau, et l’efficacité des antidépresseurs pour lutter contre la douleur remise en cause.", heures: 0, minutes: 6),
            PodcastEpisode(id: 6, titre: "Néandertal : portrait caché", date: Date.now.addingTimeInterval(-TimeInterval(360)), description: "durée : 00:06:09 - Le Journal des sciences - par : Alexandra Delbot - Au menu du journal des sciences : des plantes carnivores qui composent leur menu d’insectes, Néandertal nous aurait donné son nez, les inégalités de genre s’observent dans le cerveau, et l’efficacité des antidépresseurs pour lutter contre la douleur remise en cause.", heures: 0, minutes: 58)
          
        ]
    }
    
}
