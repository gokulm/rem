﻿#region License
// Open Behavioral Health Information Technology Architecture (OBHITA.org)
// 
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//     * Neither the name of the <organization> nor the
//       names of its contributors may be used to endorse or promote products
//       derived from this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#endregion

using System;
using System.Collections.Generic;
using Pillar.Domain;

namespace Rem.Domain.Clinical.VisitModule
{
    /// <summary>
    /// IVisitRepository interface defines basic repository services for the <see cref="T:Rem.Domain.Clinical.VisitModule.Visit">Visit</see>.
    /// </summary>
    public interface IVisitRepository : IRepository<Visit>
    {
        /// <summary>
        /// Gets the visits by clinician and date range.
        /// </summary>
        /// <param name="clinicianKey">The clinician key.</param>
        /// <param name="startDate">The start date.</param>
        /// <param name="endDate">The end date.</param>
        /// <returns>An IList&lt;Visit&gt;.</returns>
        IList<Visit> GetVisitsByClinicianAndDateRange ( long clinicianKey, DateTime startDate, DateTime endDate );

        /// <summary>
        /// Gets the scheduled visits and activities by clinical case.
        /// </summary>
        /// <param name="clinicalCaseKey">The clinical case key.</param>
        /// <returns>An IList&lt;Visit&gt;.</returns>
        IList<Visit> GetScheduledVisitsAndActivitiesByClinicalCase ( long clinicalCaseKey );

        /// <summary>
        /// Gets the recent visits and activities by clinical case.
        /// </summary>
        /// <param name="clinicalCaseKey">The clinical case key.</param>
        /// <returns>An IList&lt;Visit&gt;.</returns>
        IList<Visit> GetRecentVisitsAndActivitiesByClinicalCase ( long clinicalCaseKey );

        /// <summary>
        /// Gets the schedulable activity types.
        /// </summary>
        /// <returns>An IList&lt;ActivityType&gt;.</returns>
        IList<ActivityType> GetSchedulableActivityTypes ();
    }
}
