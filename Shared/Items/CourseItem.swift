//
//  CourseItem.swift
//  DesignCodeCourse
//
//  Created by Arian Taherzadeh on 2021-02-02.
//

import SwiftUI

struct CourseItem: View {
    
    var course: Course = courses[0]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4.0) {
            Spacer()
            HStack {
                Spacer()
                Image(course.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
            Text(course.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                
            Text(course.subtitle)
                .font(.footnote)
                .foregroundColor(Color.white)
                
                
                
        }
        .padding(.all)
        .frame(height: nil)
        .background(course.color)
        .clipShape(RoundedRectangle(cornerRadius: 22, style: .continuous))
        .shadow(color: course.color.opacity(0.3), radius: 20, x: 0, y: 10)
    }
}

struct CourseItem_Previews: PreviewProvider {
    static var previews: some View {
        CourseItem()
    }
}
