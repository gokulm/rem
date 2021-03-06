#region License
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
using Pillar.Domain;
using Pillar.Domain.NamingStrategy;
using Rem.Domain.Core.AgencyModule;

namespace Rem.Domain.Clinical.ClinicalCaseModule
{
    /// <summary>
    /// The ClinicalCaseAdmission defines the admittance of a patient into a clinical case.
    /// </summary>
    [Component]
    [ComponentNamingStrategy(typeof(PropertyNameAsColumnNameNamingStrategy))]
    public class ClinicalCaseAdmission : IEquatable<ClinicalCaseAdmission>
    {
        private ClinicalCaseAdmission()
        {
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="ClinicalCaseAdmission"/> class.
        /// </summary>
        /// <param name="admissionDate">The admission date.</param>
        /// <param name="admittedByStaff">The admitted by staff.</param>
        /// <param name="admissionNote">The admission note.</param>
        public ClinicalCaseAdmission(
            DateTime? admissionDate,
            Staff admittedByStaff,
            string admissionNote)
        {
            AdmissionDate = admissionDate;
            AdmittedByStaff = admittedByStaff;
            AdmissionNote = admissionNote;
        }

        /// <summary>
        /// Gets the admission date.
        /// </summary>
        public virtual DateTime? AdmissionDate { get; private set; }

        /// <summary>
        /// Gets the admitted by staff.
        /// </summary>
        public virtual Staff AdmittedByStaff { get; private set; }

        /// <summary>
        /// Gets the admission note.
        /// </summary>
        public virtual string AdmissionNote { get; private set; }

        /// <summary>
        /// Implements the operator ==.
        /// </summary>
        /// <param name="left">The left.</param>
        /// <param name="right">The right.</param>
        /// <returns>
        /// The result of the operator.
        /// </returns>
        public static bool operator ==(ClinicalCaseAdmission left, ClinicalCaseAdmission right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implements the operator !=.
        /// </summary>
        /// <param name="left">The left.</param>
        /// <param name="right">The right.</param>
        /// <returns>
        /// The result of the operator.
        /// </returns>
        public static bool operator !=(ClinicalCaseAdmission left, ClinicalCaseAdmission right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Determines if the values are equal.
        /// </summary>
        /// <param name="obj">
        /// The other object.
        /// </param>
        /// <returns>
        /// A boolean denoting equality of the values.
        /// </returns>               
        public override bool Equals(object obj)
        {
            if (ReferenceEquals(null, obj))
            {
                return false;
            }
            if (ReferenceEquals(this, obj))
            {
                return true;
            }
            if (obj.GetType() != typeof(ClinicalCaseAdmission))
            {
                return false;
            }
            return Equals((ClinicalCaseAdmission)obj);
        }


        /// <summary>
        /// Determines if the values are equal.
        /// </summary>
        /// <param name="other">
        /// The other object.
        /// </param>
        /// <returns>
        /// A boolean denoting equality of the values.
        /// </returns>             
        public bool Equals(ClinicalCaseAdmission other)
        {
            if (ReferenceEquals(null, other))
            {
                return false;
            }
            if (ReferenceEquals(this, other))
            {
                return true;
            }
            return other.AdmissionDate.Equals(this.AdmissionDate) && Equals(other.AdmittedByStaff, this.AdmittedByStaff) && Equals(other.AdmissionNote, this.AdmissionNote);
        }

        /// <summary>
        /// Returns a hash code for this instance.
        /// </summary>
        /// <returns>
        /// A hash code for this instance, suitable for use in hashing algorithms and data structures like a hash table. 
        /// </returns>
        public override int GetHashCode()
        {
            unchecked
            {
                int result = (this.AdmissionDate.HasValue ? this.AdmissionDate.Value.GetHashCode() : 0);
                result = (result * 397) ^ (this.AdmittedByStaff != null ? this.AdmittedByStaff.GetHashCode() : 0);
                result = (result * 397) ^ (this.AdmissionNote != null ? this.AdmissionNote.GetHashCode() : 0);
                return result;
            }
        }
    }
}