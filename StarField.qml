import QtQuick 2.8
import QtQuick.Particles 2.12
import QtGraphicalEffects 1.12


Item {
  id: starFieldAF
  width: parent.width
  height: parent.height

  property var currentCollection

  ParticleSystem {
      id: particlesystemSmall
      anchors.fill: starFieldAF

      ImageParticle {
          id: stars
          source: "assets/starfield/star.png"
          groups: ["stars"]
          opacity: 0.3
          // opacity: 0.05
          scale: 1
      }

      Emitter {
          id: starsemitter
          anchors.fill: parent
          emitRate: 100 // 10000
          lifeSpan: 20000 // 1000
          lifeSpanVariation: 5000 // 500
          startTime: 5000
          group: "stars"
          endSize: vpx(5)
          // shape: MaskShape {
          //   source: currentCollection.shortName ? "assets/controllers_svg/%1.svg".arg(currentCollection.shortName) : ""
          // }
      }
  }

  ParticleSystem {
      id: particlesystemBig
      anchors.fill: parent

      ImageParticle {
          id: starsBig
          source: "assets/starfield/star.png"
          groups: ["starsBig"]
          opacity: 0.8
          scale: 1
      }

      Emitter {
          id: starsemitterBig
          anchors.fill: parent
          emitRate: 5
          lifeSpan: 35000
          lifeSpanVariation: 5000
          startTime: 5000
          group: "starsBig"
          endSize: vpx(15)
      }
  }

  ParticleSystem {
      id: particlesystemBigger
      anchors.fill: parent

      ImageParticle {
          id: starsBigger
          source: "assets/starfield/star.png"
          groups: ["starsBigger"]
          opacity: 1
          scale: 1
      }

      Emitter {
          id: starsemitterBigger
          anchors.fill: parent
          emitRate: 0.2
          lifeSpanVariation: 10000
          lifeSpan: 50000
          startTime: 5000
          group: "starsBigger"
          endSize: vpx(30)
      }
  }
}
